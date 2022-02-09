package ru.javawebinar.topjava.repository;
import ru.javawebinar.topjava.model.MealTo;

import java.util.List;

public interface ApplicationDAO  {
    List<MealTo> getAllUsers();
 MealTo getUserById(Integer id);
void addMealTo(MealTo MealTo);
void deleteMealTo(Integer id);
 void updateUser(MealTo MealTo);
}
