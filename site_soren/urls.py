from django.urls import path, include
from .views import (index_view, not_found, contact_us, about_us, blogs, blog_detail, faq, gallery_image, gallery_video,
                    product_detail, product_group, products, sample_request, header_view, footer_view,
                    recordcontactus_view, record_sample)

urlpatterns = [
    path('', index_view, name="index_view"),
    path('not-found/', not_found, name="not_found"),
    path('contact-us/', contact_us, name="contact_us"),
    path('about-us/', about_us, name="about_us"),
    path('blogs/<id>', blogs, name="blogs"),
    path('blog-detail/<id>', blog_detail, name="blog-detail"),
    path('faq/', faq, name="blogs_view"),
    path('gallery-image/', gallery_image, name="blogs_detail"),
    path('gallery-video/', gallery_video, name="product"),
    path('product-detail/<id>', product_detail, name="product_detail"),
    path('product-group/', product_group, name="product_detail"),
    path('products/<id>', products, name="products"),
    path('sample-request/', sample_request, name="add_record"),
    path('header_view/kiutdjyg/', header_view, name="header_view"),
    path('footer_view/kiutdjyg/', footer_view, name="footer_view"),
    path('recordcantactus/', recordcontactus_view, name="recordcontactus_view"),
    path('recordsample/', record_sample, name="record_sample"),
    path(r'^tinymce/', include('tinymce.urls')),
]
