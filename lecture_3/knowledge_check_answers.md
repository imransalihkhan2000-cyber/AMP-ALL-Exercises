# Knowledge Check — Answers

## Part 1

**1. What is Dart?**  
Dart is an object-oriented programming language used to write Flutter applications. It supports static types, type inference, and asynchronous programming.

**2. What is the purpose of main()?**  
`main()` is the entry point of a Dart application. Execution starts there.

**3. Name four common Dart data types.**  
`int` stores whole numbers, `double` decimal numbers, `String` text, and `bool` true/false values.

**4. What is type inference?**  
Dart determines a variable's type from its initial value. For example, `var age = 20;` is inferred as `int`.

**5. How is var different from dynamic?**  
`var` infers and keeps a static type. `dynamic` allows values of different types and weakens compile-time type checking.

**6. What does String? mean?**  
It is a nullable String type; the variable may contain text or `null`.

**7. What is the difference between / and ~/?**  
`/` performs division and produces a double result. `~/` performs truncating integer division.

**8. What is the ternary operator?**  
A short conditional expression: `condition ? valueIfTrue : valueIfFalse`.

**9. What is a List?**  
An ordered collection of values whose elements can be accessed by index.

## Part 2

**10. What index does the first List element have?**  
Index `0`.

**11. What is the purpose of a for-in loop?**  
It visits each element in a collection, such as a List, one at a time.

**12. What is a class?**  
A blueprint defining the data (fields) and behavior (methods) of objects.

**13. What is an object?**  
An instance of a class.

**14. What is a constructor?**  
A special class member that initializes a new object. It normally has the same name as its class.

**15. Why is the new keyword usually omitted?**  
Dart makes `new` optional, so `Student('Ali', 7)` is sufficient and is the normal modern style.

**16. What does final mean?**  
A `final` variable can be assigned only once; its value may be determined at runtime.

**17. What does const mean?**  
A `const` value or object is a compile-time constant whose value is known in a constant context.

**18. Give one difference between final and const.**  
A `final` value can be determined at runtime; a `const` value must be known at compile time.

**19. What is string interpolation?**  
It inserts variable values or expressions into a string. Use `$name` for a variable and `${a + b}` for an expression.
