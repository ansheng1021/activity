var app = getApp();
Page({
  data: {
    addressName: '',
    submitStatus: false
  },
  bindStartTimeChange: function (e) {
    this.setData({
      startTime: e.detail.value
    });
  },
  onShow: function (option) {
    wx.setNavigationBarTitle({
      title: '活动报名'
    });
  },
  bindEndTimeChange: function (e) {
    this.setData({
      endTime: e.detail.value
    });
  },
  openmap: function () {
    var that = this;
    //获取当前位置
    wx.getLocation({
      type: 'gcj02',
      success: function (res) {
        var latitude = res.latitude
        var longitude = res.longitude
        var accuracy = res.accuracy
      }
    })
    wx.chooseLocation({
      success: function (res) {
        var latitude = res.latitude
        var longitude = res.longitude
        var name = res.name
        var address = res.address
        that.setData({ 
          latitude: latitude,
          longitude: longitude,
          addressName:address + name
          })
      }
    })
  },
  
  formSubmit: function (e) {
    
    var _this = this;
    var object = e.detail.value || {};
    var status = true;
    // 开始时间戳
    var start_timeStamp = new Date(e.detail.value.act_start_time.replace(/-/g, "/")).getTime();
    // 结束时间戳
    var end_timeStamp = new Date(e.detail.value.act_end_time.replace(/-/g, "/")).getTime()
    // 判断时间是否合理
    if(start_timeStamp - end_timeStamp > 0){
      wx.showModal({
        title: '时间错误',
        content: '开始时间不能大于结束时间',
        success: function (res) {
          
        }
      });
      return false;
    }
    for (var key in object) {
      if (!object[key]) {
        status = false;
      }
    }
    console.log(e.detail.value)
    if (status) {
      wx.showLoading({
        title: '提交中'
      })
        wx.request({
          url: app.globalData.domain + 'activity.php',
          dataType:'json',
          method:'POST',
          header:{
            'content-type':'application/x-www-form-urlencoded'
          },
          data: object,
          success: function (res) {
            wx.hideLoading()
            if(res.code == 200){
              wx.showToast({
                title: '提交成功',
              })
            }else{
              wx.showToast({
                title: '提交失败',
              })
            }
           
          }
        });
    } else {
      wx.showModal({
        title: '提交数据',
        content: '活动内容未填写完整',
        success: function (res) {
          if (res.confirm) {
            console.log('用户点击确定')
          }
        }
      });
    }

  },
  onLoad: function (option) {

    
  }

});