@group(0) @binding(0) 
var img1D: texture_storage_1d<rgba8unorm,read_write>;
@group(0) @binding(1) 
var img2D: texture_storage_2d<rgba8unorm,read_write>;
@group(0) @binding(2) 
var img3D: texture_storage_3d<rgba8unorm,read_write>;
@group(0) @binding(4) 
var img1DArray: texture_storage_1d_array<rgba8unorm,read_write>;
@group(0) @binding(5) 
var img2DArray: texture_storage_2d_array<rgba8unorm,read_write>;
@group(0) @binding(7) 
var imgReadOnly: texture_storage_2d<rgba8unorm,read>;
@group(0) @binding(8) 
var imgWriteOnly: texture_storage_2d<rgba8unorm,write>;
@group(0) @binding(9) 
var imgWriteReadOnly: texture_storage_2d<rgba8unorm,write>;

fn testImg1D(coord: i32) {
    var coord_1: i32;
    var size: i32;
    var c: vec4<f32>;

    coord_1 = coord;
    let _e10 = textureDimensions(img1D);
    size = i32(_e10);
    let _e13 = coord_1;
    textureStore(img1D, _e13, vec4(2f));
    let _e17 = coord_1;
    let _e18 = textureLoad(img1D, _e17);
    c = _e18;
    return;
}

fn testImg1DArray(coord_2: vec2<i32>) {
    var coord_3: vec2<i32>;
    var size_1: vec2<f32>;
    var c_1: vec4<f32>;

    coord_3 = coord_2;
    let _e10 = textureDimensions(img1DArray);
    let _e11 = textureNumLayers(img1DArray);
    size_1 = vec2<f32>(vec2<i32>(vec2<u32>(_e10, _e11)));
    let _e16 = coord_3;
    let _e19 = textureLoad(img1DArray, _e16.x, _e16.y);
    c_1 = _e19;
    let _e21 = coord_3;
    textureStore(img1DArray, _e21.x, _e21.y, vec4(2f));
    return;
}

fn testImg2D(coord_4: vec2<i32>) {
    var coord_5: vec2<i32>;
    var size_2: vec2<f32>;
    var c_2: vec4<f32>;

    coord_5 = coord_4;
    let _e10 = textureDimensions(img2D);
    size_2 = vec2<f32>(vec2<i32>(_e10));
    let _e14 = coord_5;
    let _e15 = textureLoad(img2D, _e14);
    c_2 = _e15;
    let _e17 = coord_5;
    textureStore(img2D, _e17, vec4(2f));
    return;
}

fn testImg2DArray(coord_6: vec3<i32>) {
    var coord_7: vec3<i32>;
    var size_3: vec3<f32>;
    var c_3: vec4<f32>;

    coord_7 = coord_6;
    let _e10 = textureDimensions(img2DArray);
    let _e13 = textureNumLayers(img2DArray);
    size_3 = vec3<f32>(vec3<i32>(vec3<u32>(_e10.x, _e10.y, _e13)));
    let _e18 = coord_7;
    let _e21 = textureLoad(img2DArray, _e18.xy, _e18.z);
    c_3 = _e21;
    let _e23 = coord_7;
    textureStore(img2DArray, _e23.xy, _e23.z, vec4(2f));
    return;
}

fn testImg3D(coord_8: vec3<i32>) {
    var coord_9: vec3<i32>;
    var size_4: vec3<f32>;
    var c_4: vec4<f32>;

    coord_9 = coord_8;
    let _e10 = textureDimensions(img3D);
    size_4 = vec3<f32>(vec3<i32>(_e10));
    let _e14 = coord_9;
    let _e15 = textureLoad(img3D, _e14);
    c_4 = _e15;
    let _e17 = coord_9;
    textureStore(img3D, _e17, vec4(2f));
    return;
}

fn testImgReadOnly(coord_10: vec2<i32>) {
    var coord_11: vec2<i32>;
    var size_5: vec2<f32>;
    var c_5: vec4<f32>;

    coord_11 = coord_10;
    let _e10 = textureDimensions(img2D);
    size_5 = vec2<f32>(vec2<i32>(_e10));
    let _e14 = coord_11;
    let _e15 = textureLoad(imgReadOnly, _e14);
    c_5 = _e15;
    return;
}

fn testImgWriteOnly(coord_12: vec2<i32>) {
    var coord_13: vec2<i32>;
    var size_6: vec2<f32>;

    coord_13 = coord_12;
    let _e10 = textureDimensions(img2D);
    size_6 = vec2<f32>(vec2<i32>(_e10));
    let _e14 = coord_13;
    textureStore(imgWriteOnly, _e14, vec4(2f));
    return;
}

fn testImgWriteReadOnly(coord_14: vec2<i32>) {
    var coord_15: vec2<i32>;
    var size_7: vec2<f32>;

    coord_15 = coord_14;
    let _e10 = textureDimensions(imgWriteReadOnly);
    size_7 = vec2<f32>(vec2<i32>(_e10));
    return;
}

fn main_1() {
    return;
}

@fragment 
fn main() {
    main_1();
    return;
}
