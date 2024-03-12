

@component('mail::message')
# New Contact Form Submission

**Name:** {{ $name }}

**Email:** {{ $email }}

**Message:**
{{ $message }}

Thank you for reaching out!

@endcomponent

