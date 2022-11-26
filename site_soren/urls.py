from django.urls import path, include
from .views import index_view


urlpatterns = [
    path('', index_view, name="index_view"),
    # path('contact-us/', contact_us, name="contact_us"),
    # path('about-us/', about_us, name="about_us"),
    # path('blogs/', blogs_view, name="blogs_view"),
    # path('blog-detail/<id>', blogs_detail, name="blogs_detail"),
    # path('product/', product, name="product"),
    # path('product-detail/<id>', product_detail, name="product_detail"),
    # path('product_detail_404/', product_detail_404, name="product_detail"),
    # path('header_view/kiutdjyg/', header_view, name="header_view"),
    # path('footer_view/kiutdjyg/', footer_view, name="footer_view"),
    # path('addrecord/', add_record, name="add_record"),
    # path(r'^tinymce/', include('tinymce.urls')),
]