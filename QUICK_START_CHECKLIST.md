# 🚀 Quick Start Checklist

Follow these steps to get your recruitment system up and running!

## ✅ Pre-Installation Checklist

- [ ] Node.js installed (v14+) - ✓ You have v22.20.0
- [ ] MongoDB Atlas account created
- [ ] MongoDB connection string available
- [ ] MongoDB password ready

---

## 📝 Step-by-Step Setup

### Step 1: Configure MongoDB Password ⚙️

1. Open file: `backend\.env`
2. Find this line:
   ```
   MONGODB_URI=mongodb+srv://appUser:<db_password>@cluster0...
   ```
3. Replace `<db_password>` with your actual MongoDB password
4. Save the file

**Example:**
```
MONGODB_URI=mongodb+srv://appUser:MySecretPassword123@cluster0...
```

✅ **Check:** Does your .env file have the real password (not `<db_password>`)?

---

### Step 2: Install Backend Dependencies 📦

**Option A: Use Batch File (Easiest)**
1. Double-click `install-backend.bat`
2. Wait for installation to complete
3. Press any key to close

**Option B: Manual Installation**
```bash
cd backend
npm install
```

**Expected Output:**
```
added 150+ packages
```

✅ **Check:** Do you see a `node_modules` folder in the backend directory?

---

### Step 3: Start Backend Server 🖥️

**Option A: Use Batch File (Easiest)**
1. Double-click `start-backend.bat`
2. Keep this window open

**Option B: Manual Start**
```bash
cd backend
npm run dev
```

**Expected Output:**
```
Server is running on port 5000
MongoDB connected successfully
```

✅ **Check:** Do you see "MongoDB connected successfully"?

**If you see errors:**
- ❌ "MongoDB connection error" → Check your password in .env
- ❌ "Port 5000 already in use" → Change PORT in .env to 5001

---

### Step 4: Install Frontend Dependencies 📦

In a **NEW terminal window**:

```bash
npm install
```

✅ **Check:** Do you see a `node_modules` folder in the project root?

---

### Step 5: Start Frontend 🎨

In the same terminal:

```bash
npm run dev
```

**Expected Output:**
```
  VITE v5.4.2  ready in 500 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
```

✅ **Check:** Can you open http://localhost:5173 in your browser?

---

## 🧪 Test the System

### Test 1: Basic Connection ✅

1. Open http://localhost:5173
2. You should see the recruitment dashboard
3. Click on "Candidates" in the navigation

**Expected:** Empty candidate list (or loading message)

---

### Test 2: Manual Candidate Entry ✅

1. Click "Add Candidate" button
2. **Uncheck** "Parse candidate info from resume automatically"
3. Fill in the form:
   - Name: John Test
   - Email: john.test@example.com
   - Phone: +1 234 567 8900
   - Position: Software Engineer
   - Experience: 5
   - Location: New York, NY
   - Skills: React, Node.js, MongoDB
4. Click "Add Candidate"

**Expected:** 
- Modal closes
- New candidate appears in the list
- No errors shown

✅ **Check:** Did the candidate get added?

---

### Test 3: Resume Upload & Parsing 🎯

**Prepare a test resume:**
- Format: PDF or DOCX
- Must include: name, email, phone number
- Optional: skills, experience, education

**Steps:**
1. Click "Add Candidate" button
2. **Check** "Parse candidate info from resume automatically"
3. Click on the file upload field
4. Select your resume file
5. Watch the magic happen! 🪄
6. Fields should auto-fill with parsed data
7. Verify the extracted information
8. Override any incorrect fields if needed
9. Click "Add Candidate"

**Expected:**
- File uploads successfully
- Name, email, phone auto-fill
- Skills appear in skills field
- Candidate gets created
- Shows "Processing..." while uploading
- Success message or candidate appears in list

✅ **Check:** Did the resume data get extracted correctly?

---

### Test 4: Verify in MongoDB 💾

**Option A: MongoDB Compass**
1. Open MongoDB Compass
2. Connect to your cluster
3. Navigate to: recruitment → candidates
4. You should see your test candidates

**Option B: MongoDB Atlas Web Interface**
1. Go to https://cloud.mongodb.com
2. Click on "Browse Collections"
3. Database: recruitment
4. Collection: candidates
5. View your data

✅ **Check:** Can you see the candidates in MongoDB?

---

## 🐛 Troubleshooting

### Backend Won't Start

**Error: "Cannot find module"**
```bash
cd backend
npm install
```

**Error: "MongoDB connection error"**
- Check password in `backend\.env`
- Verify MongoDB cluster is running
- Check internet connection
- Whitelist your IP in MongoDB Atlas

**Error: "Port 5000 already in use"**
- Edit `backend\.env`: Change `PORT=5000` to `PORT=5001`
- Edit `src\api\index.ts`: Change `5000` to `5001` in API_BASE_URL

---

### Frontend Won't Start

**Error: "npm: command not found"**
- Restart terminal
- Verify Node.js installation: `node --version`

**Error: "Module not found"**
```bash
npm install
```

---

### Resume Upload Fails

**Error: "Failed to upload resume"**
- Check file format (PDF or DOCX only)
- Check file size (must be < 5MB)
- Ensure backend is running
- Check browser console for errors

**Error: "Email is required"**
- Resume must contain a valid email address
- Manually enter email if not detected
- Check resume formatting

---

### No Candidates Showing

**Frontend shows "Loading..."**
- Check if backend is running
- Open browser console (F12)
- Look for CORS or network errors
- Verify API URL in `src\api\index.ts`

**"No candidates yet"**
- This is normal on first run
- Add a test candidate to verify connection

---

## 📊 Verify Everything Works

### Checklist ✅

- [ ] Backend server running on port 5000
- [ ] Frontend running on port 5173
- [ ] MongoDB connection successful
- [ ] Can add candidate manually
- [ ] Can upload resume
- [ ] Resume data auto-fills
- [ ] Candidates appear in list
- [ ] Data persists in MongoDB
- [ ] Can search candidates
- [ ] Can view candidate details

---

## 🎉 Success Indicators

You'll know everything is working when:

1. ✅ No error messages in terminals
2. ✅ Can add candidates manually
3. ✅ Can upload resumes successfully
4. ✅ Resume data gets extracted automatically
5. ✅ Candidates appear in the list immediately
6. ✅ Data persists after page refresh
7. ✅ Can search and filter candidates
8. ✅ MongoDB shows the data

---

## 📁 Important Files Reference

### Configuration Files
- `backend\.env` - MongoDB password and port
- `src\api\index.ts` - Backend API URL

### Helper Scripts
- `install-backend.bat` - Install backend dependencies
- `start-backend.bat` - Start backend server

### Documentation
- `SETUP_INSTRUCTIONS.txt` - Detailed setup guide
- `IMPLEMENTATION_SUMMARY.md` - Technical details
- `ARCHITECTURE.md` - System architecture
- `backend\README.md` - Backend-specific docs

---

## 🆘 Still Having Issues?

### Check These Common Issues:

1. **MongoDB Password**
   - Double-check `backend\.env`
   - No spaces around the password
   - No < > symbols around the password

2. **Both Servers Running**
   - Backend on port 5000
   - Frontend on port 5173
   - Two separate terminal windows

3. **Node Modules Installed**
   - `backend\node_modules` exists
   - Root `node_modules` exists

4. **Internet Connection**
   - MongoDB Atlas requires internet
   - Check firewall settings

---

## 🎯 Next Steps

Once everything is working:

1. **Test with Real Resumes**
   - Upload various resume formats
   - Check parsing accuracy
   - Note any issues

2. **Customize as Needed**
   - Add more fields to Candidate model
   - Enhance resume parsing logic
   - Add custom validation rules

3. **Deploy to Production**
   - Choose hosting platform
   - Set up environment variables
   - Configure cloud file storage

4. **Add More Features**
   - Email notifications
   - Interview scheduling
   - Candidate scoring
   - Advanced search

---

## ✅ You're All Set!

Your recruitment system with intelligent resume parsing is now ready to use! 🎊

**Start recruiting smarter with automated candidate data extraction!** 🚀
