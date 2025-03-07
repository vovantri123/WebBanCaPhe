<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"  %>    
    
<script type="text/javascript" src="${pageContext.request.contextPath}/views/assets/js/validate/slideValidate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/assets/js/formatNumber.js"></script>
    

<h3 class="text-center mb-4 font-weight-bold">Chỉnh sửa Slide</h3>

<form action="SlideServlet?action=update" id="formSlide" method="post" name="formSlide" enctype="multipart/form-data" onsubmit="return removeSeparators() && validateForm()" class="p-4 bg-light shadow rounded">
    
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="maSlide" class="font-weight-bold">Mã Slide</label>
            <input type="text" class="form-control" id="maSlide" name="maSlide" value="${slide.maSlide}" readonly />
        </div>
        <div class="form-group col-md-6">
            <label for="tenSlide" class="font-weight-bold">Tên Slide</label>
            <input type="text" class="form-control" id="tenSlide" name="tenSlide" value="${slide.tenSlide}"/>
        </div>
    </div>

    <div class="form-group">
        <label for="picture" class="font-weight-bold">Hình Slide</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" name="filename123"> <!-- cái name này đặt tên gì cũng được, nhưng phải có tên :v -->
            
            <label class="custom-file-label">Chọn hình ảnh</label>
            <input type="hidden" name="anhSlide" value="${slide.anhSlide}" />
        </div>

        <div class="border p-3 text-center mt-3 bg-white">
            <img src="<%=request.getContextPath()%>/views/assets/images/Slide/${slide.anhSlide}"
                 onerror="this.src='https://via.placeholder.com/725x220'"
                 alt="Placeholder Image"
                 class="img-fluid img-thumbnail shadow-sm rounded"
                 style="max-width: 725px;  max-height: 220px;">
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="viTri" class="font-weight-bold">Vị trí</label>
            <input type="number" class="form-control" id="viTri" name="viTri" value="${slide.viTri}" min="0" step="1"/>
        </div>
        <div class="form-group col-md-6">
            <label for="trangThai" class="font-weight-bold">Trạng thái</label>
            <select class="form-control" id="trangThai" name="trangThai">
                <option value="Hiển thị" ${slide.trangThai == 'Hiển thị' ? 'selected' : ''}>Hiển thị</option>
                <option value="Ẩn" ${slide.trangThai == 'Ẩn' ? 'selected' : ''}>Ẩn</option>
            </select>
        </div>
    </div>
    
    <div class="form-group d-flex justify-content-center"> 
        <button type="submit" class="btn btn-primary mr-2" style="width:100px">Cập nhật</button>
        <a href="<%=request.getContextPath()%>/SlideServlet" class="btn btn-secondary" style="width:100px">Hủy</a> 
	</div>
</form>
 
 
 
 