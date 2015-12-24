# CompressionAndHugTestProject
##Content Hugging
Content Hugging的意思就是当前视图去适应内容的优先级，分水平和垂直两个方向。

###例子1
比如，View1在水平方向的Content Hugging为499，View1（内容宽：200，高：100）与其容器SuperView（500，100）边距约束（left:100，right:100）的优先级为500，那么，自动布局就会优先根据边距约束来设置View1的宽度，那么View1的宽度会给拉伸到300（500-左100-右100）。
如果，View1在水平方向的Content Hugging为501，那么View的宽度就会保持他自身的宽度200。

###例子2
假设，你有一个下面这样的按钮：

```
[		Click Me		]
```

按钮与其父视图之间的边距约束优先级是500。

那么，如果按钮的吸附性优先级（Hugging priority）大于500，按钮看起来会是这样：

```
[Click Me]
```

如果，吸附性优先级小于500，按钮会是这样：

```
[		Click Me		]
```

如果现在父视图收缩了，按钮的压缩阻力优先级（Compression Resistance priority）大于500，它看起来会是这样：

```
[Click Me]
```

否则，如果压缩阻力优先级小于500，它会是这样：

```
[Cli..]
```


详细可以参加例子中上半视图的例子,也可以自己修改去体验下就明白说明含义了。

##Content Compression Resistance
这个更容易理解，就是不许挤我。
比如容器SuperView的宽度为400，子Label1的内容300，宽度优先级500。子Label2的内容为200，宽度优先级为499，如下图

```
|<---Label1,300----><---Label2,200--->|   
|<-------SuperView,400------->|   //父容器的宽度
|<---Label1,300----><La..,100>|   //这就是实际的效果
```

详细可以参加例子中下半视图的例子。