# Slot Booking System

A web-based slot reservation system with user registration, booking management, and administrative controls.

## Features

- **User Registration & Authentication**: Secure signup and login system
- **Slot Booking**: Users can reserve available slots (maximum 1 slot per user)
- **Payment Processing**: Bill payment system for unreservations
- **Admin Dashboard**: Complete administrative control panel
- **User History**: Track past reservations and transactions

## Prerequisites

Before you begin, ensure you have the following installed:

- **XAMPP** (Apache + MySQL + PHP)
  - Download from: https://www.apachefriends.org/
- **Web Browser** (Chrome, Firefox, Safari, or Edge)
- **Text Editor** (optional, for code modifications)

## Installation

### Step 1: Setup Database

1. Start XAMPP Control Panel
2. Start **Apache** and **MySQL** services
3. Open your web browser and navigate to:
   ```
   http://localhost/phpmyadmin
   ```
4. Create a new database:
   - Click on "New" in the left sidebar
   - Database name: `project`
   - Collation: `utf8_general_ci` (default)
   - Click "Create"

### Step 2: Import Database Schema

1. Select the `project` database you just created
2. Click on the "Import" tab
3. Click "Choose File" and select `project.sql` from the project folder
4. Click "Go" at the bottom of the page
5. Wait for the success message

### Step 3: Deploy Application Files

1. Locate your XAMPP installation folder:
   - **Windows**: `C:\xampp\htdocs\`
   - **Mac**: `/Applications/XAMPP/htdocs/`
   - **Linux**: `/opt/lampp/htdocs/`

2. Copy the entire `project` folder
3. Paste it into the `htdocs` directory

### Step 4: Access the Application

1. Open your web browser
2. Navigate to:
   ```
   http://localhost/project/register.html
   ```
3. The homepage (signup page) will appear

## Usage Guide

### For Users

#### 1. Registration
- Go to `http://localhost/project/register.html`
- Fill in the registration form with your information
- Click "Sign Up"

#### 2. Booking a Slot
1. From the homepage, click on **"User"** option
2. Select **Slot 1** or **Slot 2**
3. Complete login verification
4. If the slot is available, your booking will be confirmed
   - **Note**: Each user can reserve only ONE slot at a time

#### 3. Unreserving a Slot
1. Return to the homepage
2. Click on **"User"** option
3. Click **"Unreserve"**
4. Complete login verification
5. If you have an active reservation:
   - Payment page will appear with your due bill
   - Complete the payment
   - Unreservation will be processed
   - **Note**: This won't work if admin has already deleted your reservation

### For Administrators

#### Admin Login Credentials
```
Username: shimul
Password: 111
```

#### Admin Functions

1. **Access Admin Panel**
   - Go to homepage
   - Click on **"Admin"** option
   - Login with admin credentials

2. **View User Details**
   - Enter user's phone number
   - Click "Check User Details"
   - View complete user information

3. **View Reservation Details**
   - Enter user's phone number
   - Click "Check Reservation Details"
   - View active booking information

4. **Modify User Information**
   - Enter user's phone number
   - Click "Change User Name"
   - Update user details as needed

5. **Delete Reservation**
   - Enter user's phone number
   - Click "Delete Reservation"
   - Confirm deletion
   - **Note**: Cannot delete if user has already unreserved

6. **View User History**
   - Enter user's phone number
   - Click "Check User History"
   - View past reservations and transactions
   - **Note**: History only appears after user has unreserved

## Project Structure

```
project/
├── register.html          # Homepage - User registration
├── login.html            # User login page
├── admin.php             # Admin dashboard
├── user.php              # User dashboard
├── payment.php           # Payment processing
├── slot1.php            # Slot 1 booking page
├── slot2.php            # Slot 2 booking page
├── unreserve.php        # Unreservation handler
├── project.sql          # Database schema
├── PHPConnect.php       # Database connection
├── *.css files          # Styling
└── *.jpg files          # Images
```

## Workflow Diagram

```
Registration → Login → Select Slot → Book Slot
                ↓
              Admin Review
                ↓
        User Unreserve → Payment → Completion
```

## Troubleshooting

### Common Issues

**Problem**: Cannot access `localhost/project/register.html`
- **Solution**: Ensure Apache is running in XAMPP Control Panel

**Problem**: Database connection error
- **Solution**: 
  - Check MySQL is running in XAMPP
  - Verify database name is exactly `project`
  - Check `PHPConnect.php` for correct credentials

**Problem**: SQL import fails
- **Solution**: 
  - Ensure you selected the correct database before importing
  - Check that `project.sql` file is not corrupted

**Problem**: "Slot already booked" message
- **Solution**: User already has an active reservation. Unreserve first before booking again.

## Database Schema

The system uses the following main tables:
- **users**: Stores user registration information
- **reservations**: Tracks active slot bookings
- **history**: Records past transactions
- **slots**: Manages slot availability

## Security Notes

⚠️ **Important**: This is a demonstration project. For production use:
- Change default admin credentials
- Implement proper password hashing
- Add input validation and sanitization
- Use prepared statements for all database queries
- Enable HTTPS
- Add session security measures

## Support

For issues or questions:
1. Check the Troubleshooting section above
2. Verify all installation steps were completed correctly
3. Ensure XAMPP services are running

## License

This project is for educational purposes.

---

**Version**: 1.0  
**Last Updated**: November 2023  
**Developed by**: Shimul

---

### Quick Start Summary

```bash
1. Install XAMPP
2. Create 'project' database in phpMyAdmin
3. Import project.sql
4. Copy project folder to htdocs
5. Visit: localhost/project/register.html
6. Start booking!
```

**Thank you for using the Slot Booking System!** 🎉
