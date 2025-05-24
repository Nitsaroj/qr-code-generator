from django import forms

class QrCodeForm(forms.Form):
    restaurant = forms.CharField(max_length=50,label='Restaurant Name',
                                 widget=forms.TextInput(attrs={
                                     'class':'w-full p-2 mb-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500',
                                     'placeholder':'Enter Restaurant Name'
                                 }))
    url =forms.URLField(max_length=200, label='Menu URL', widget=forms.URLInput(attrs={
        'class':'w-full p-2 mb-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500',
        'placeholder':'Enter Url of menu'
    }))