## 官网
https://echarts.apache.org

## vue 使用echarts
安装 echarts
npm i echarts -S

在vue页面引用  在script 里面去引用
```js
import * as echarts from 'echarts'
```
```js
  option = {
    title: {
        text: 'Stacked Line'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['Email', 'Union Ads', 'Video Ads', 'Direct', 'Search Engine']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: 'Email',
            type: 'line',
            stack: 'Total',
            data: [120, 132, 101, 134, 90, 230, 210]
        },
        {
            name: 'Union Ads',
            type: 'line',
            stack: 'Total',
            data: [220, 182, 191, 234, 290, 330, 310]
        },
        {
            name: 'Video Ads',
            type: 'line',
            stack: 'Total',
            data: [150, 232, 201, 154, 190, 330, 410]
        },
        {
            name: 'Direct',
            type: 'line',
            stack: 'Total',
            data: [320, 332, 301, 334, 390, 330, 320]
        },
        {
            name: 'Search Engine',
            type: 'line',
            stack: 'Total',
            data: [820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
};
```

## 改造后的统计图
```js
const  option = {
  title: {
    text: '图书借还统计'
  },
  tooltip: {
    trigger: 'axis'
  },
  legend: {
    data: ['借书数量','还书数量']
  },
  grid: {
    left: '3%',
    right: '4%',
    bottom: '3%',
    containLabel: true
  },
  toolbox: {
    feature: {
      saveAsImage: {}
    }
  },
  xAxis: {
    type: 'category',
    boundaryGap: false,
    data: []
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      name: '借书数量',
      type: 'line',
      stack: 'Total',
      data: []
    },
    {
      name: '还书数量',
      type: 'line',
      stack: 'Total',
      data: []
    }
  ]
};
```


定义echarts 图表的dom元素(必须)

```html
<el-card>
    <div id="line" style="width: 100%; height: 400px"></div>
</el-card>
```


定义echarts的容器
```js
data() {
    return {}
    lineBox:null,
    timeRange: 'week',
        option:[
        {label:'最近一周',value:'week'},
        {label:'最近一个月',value:'month1'},
        {label:'最近两个月',value:'month2'},
        {label:'最近三个月',value:'month3'},
    ]
   }
},
mounted() {   //等页面元素全部初始换好才开始加载mouted 这个函数 
    this.load()
},
methods: {
    load() {
        if (!this.lineBox) {
            this.lineBox = echarts.init(document.getElementById('line'))
        }
        request.get('/borrow/lineCharts/' + this.timeRange).then(res => {
            option.xAxis.data = res.data.date
            option.series[0].data = res.data.borrow
            option.series[1].data = res.data.retur
            this.lineBox.setOption(option)
        })
    }
}
}
```

根据时间范围加载最新的数据
```html
 <div style="margin: 20px 0">
    <el-select class="input" v-model="timeRange" placeholder="请选择" @change="load"> <!-- 从后台加载最新的数据 -->
        <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value"
        ></el-option>
    </el-select>
</div>
```
## 后台数据接口



