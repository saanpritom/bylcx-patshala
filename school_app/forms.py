#sendemail/forms.py
from django import forms

class ContactForm(forms.Form):
    sender_name = forms.CharField(widget=forms.TextInput(attrs={"class":"form-control", "id":"name", "placeholder":"Your Name", "data-validation-required-message":"Please enter your name.", "aria-invalid":"false"}), required=True)
    from_email = forms.EmailField(widget=forms.EmailInput(attrs={"class":"form-control", "id":"email", "placeholder":"Your Email", "data-validation-required-message":"Please enter your email.", "aria-invalid":"false"}), required=True)
    subject = forms.CharField(widget=forms.TextInput(attrs={"class":"form-control", "id":"subject", "placeholder":"Your Subject", "data-validation-required-message":"Please enter your subject.", "aria-invalid":"false"}), required=True)
    message = forms.CharField(widget=forms.Textarea(attrs={"class":"form-control", "id":"message", "placeholder":"Your Message", "data-validation-required-message":"Please enter some message.", "aria-invalid":"false"}), required=True)
