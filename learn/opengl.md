* [OpenGLES Android篇零基础系列(一)：OpenGLES2.x可渲染管道基本流程](http://www.imooc.com/article/16587)
```
OpenGL ES已经发展有了3个版本，OpenGL ES 1.0 , OpenGL ES 2.0 , OpenGL ES 3.0。其中OpenGL ES 1.0 是以OpenGL 1.3规范为基础，OpenGL ES 2.0 是以OpenGL 2.0 为基础，OpenGL ES 3.0是移动设备专用，以OpenGL 4.3为标准
```


* [OpenGLES 入门(一)着色器简介](http://www.jianshu.com/p/36277c51f47e)


```c
uniform mat4 uMVPMatrix;                 // 应用程序传入顶点着色器的总变换矩阵
attribute vec4 aPosition;                // 应用程序传入顶点着色器的顶点位置
attribute vec2 aTextureCoord;            // 应用程序传入顶点着色器的顶点纹理坐标
attribute vec4 aColor                    // 应用程序传入顶点着色器的顶点颜色变量
varying vec4 vColor                      // 用于传递给片元着色器的顶点颜色数据
varying vec2 vTextureCoord;              // 用于传递给片元着色器的顶点纹理数据
void main()
{
    gl_Position = uMVPMatrix * aPosition;// 根据总变换矩阵计算此次绘制此顶点位置
    vColor = aColor;                     // 将顶点颜色数据传入片元着色器
    vTextureCoord = aTextureCoord;       // 将接收的纹理坐标传递给片元着色器
}
```


```c
precision mediump float;   // 设置工作精度
varying vec4 vColor;       // 接收从顶点着色器过来的顶点颜色数据
varying vec2 vTextureCoord;// 接收从顶点着色器过来的纹理坐标
uniform sampler2D sTexture;// 纹理采样器，代表一幅纹理
void main()
{                                                                                   
    gl_FragColor = texture2D(sTexture, vTextureCoord) * vColor;// 进行纹理采样
}
```

* [OpenGLES入门(二)创建program](http://www.jianshu.com/p/cdc3a4c4db0b)
* [OpenGLES入门(三)与着色器交互](http://www.jianshu.com/p/64692105ca6f)


