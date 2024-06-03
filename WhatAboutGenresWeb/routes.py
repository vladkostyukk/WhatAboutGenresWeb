"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('home')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/genre')
@view('genre')
def about():
    """Renders the genre page."""
    return dict(
        title='genre',
        message='Your application description page.',
        year=datetime.now().year
    )
@route('/company')
@view('company')
def company():
    """Renders the genre page."""
    return dict(
        title='company',
        message='Your company page.',
        year=datetime.now().year
    )
