const express = require('express');
const router = express.Router();


router.use(function logRequest(req, res, next) {
    console.log(req);
    next();
});


//Digital Pantry Routes
router.get('/pantry', function(req, res){
    res.send("Fetch Pantry not implemented yet")
});

router.post('/updatePantry', function(req, res){
   res.send("Update Pantry not Implemented yet")
});


//Recipe List Routes
router.get('/recipes', function(req, res){
    res.send("Fetch Recipes not implemented yet")
});

router.post('/addRecipe', function(req, res){
    res.send("Add Recipe not Implemented yet")
});

router.post('/editRecipe/:id', function(req, res){
    res.send("Edit Recipe not Implemented yet")
});


//Generate Meal Plan
router.get('/mealPlan/:count', function(req, res){
    res.send("Generate Meal Plan not implemented yet")
});

module.exports = router;
