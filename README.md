# TWBossRefreshHeader
用MJRefresh仿Boss直聘的下拉刷新效果
##Boss直聘下拉效果
![](./gif/333.gif)

##仿Boss直聘下拉效果，方案一
继承MJRefreshStateHeader，基本效果与原版一样，只是进入MJRefreshStatePulling（即松手可以进入刷新的状态），还是保持下拉之后四个圆点都出现的状态，继承自MJRefreshGifHeader，会与原版有点不一样，因为在MJRefreshGifHeader里，当状态为MJRefreshStatePulling时，就会执行动画，所以方案一为继承自MJRefreshStateHeader，效果见如图：
![](./gif/111.gif)

##仿Boss直聘下拉效果，方案二
就直接在继承自MJRefreshGifHeader，就是在MJRefreshStatePulling状态时，会直接进入刷新状态的动画，直接上效果图，可以比较与方案一细节的区别。
![](./gif/222.gif)