# Module 3 – Activity 4 – Person (Dart)

Practice **encapsulation**: keep a class's data in private fields and expose it
only through getters and setters that have friendly public names.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field (use the **class code** your
instructor gave you):

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

> **Keep `student.json` identical across all your activities.** The autograder
> cross-checks these fields between your repos, and a mismatch (e.g. a different
> `classCode` in one activity) is flagged. The `classCode` must also match the
> one in your repo name.

### 2. Write the class

Open [`bin/person.dart`](bin/person.dart). Store the data in **private** fields
(`firstName`, `lastName`, `age`, `address`) and reach each one through a
getter/setter pair with these names:

| Member | What it does |
| --- | --- |
| `myFName` | get/set the first name (`String`) |
| `myLName` | get/set the last name (`String`) |
| `myAge` | get/set the age (`int`) |
| `myAddress` | get/set the address (`String`) |
| `fullName` | getter: first name + `' '` + last name |
| `describe()` | returns the sentence below |

`describe()` must return **exactly** this format:

```
<fullName>, is <age> years of age and currently lives at <address>
```

For example: `Juan Dela Cruz, is 20 years of age and currently lives at Angeles`

Then in `main()`:

```dart
void main() {
  // create a Person object
  // read first name, last name, age and address from the user (use the setters)
  // print describe()
}
```

> **Concepts to research** - see the **Module 3 – OOP** cheat sheet in your
> workspace repo (`content/cheat-sheets/dart-m3-oop.md`): private `_` fields,
> getters and setters (they can have their own names), and string interpolation.

Run it yourself:

```bash
dart run bin/person.dart
```

## Set up your repo

Before you write any code, create **your own copy** of this activity from the
template. Do not work in the template itself.

1. **Create from the template.** Open the template repo and click
   **Use this template → Create a new repository**.
2. **Set the owner to the course org.** Under *Owner*, choose the **`HAU-6ADET`
   course org**, **not** your personal account.
3. **Name it by the convention** `m<module>a<activity>-<classcode>-<yourname>`.
   For this activity that's **`m3a4-<classcode>-yourname`** (e.g.
   `m3a4-1234-juandelacruz`). The `<classcode>` must match the one you put in
   `student.json`.
4. **Make it Private.** Set *Visibility* to **Private** so classmates can't see
   your work.

Then clone **your** new repo and work there:

```bash
git clone https://github.com/HAU-6ADET/m3a4-<classcode>-yourname.git
cd m3a4-<classcode>-yourname
```

## Running the tests

```bash
dart pub get
dart test
```

This activity is graded by **4 tests** (1 point each). They check:

- ✅ `student.json` is completely filled in (1 test)
- ✅ setters store values and getters read them back (1 test)
- ✅ `fullName` combines the first and last name (1 test)
- ✅ `describe()` formats the full sentence exactly (1 test)

Each part is graded independently, so you earn partial credit.

## Confirm your submission

Your repo **is** your submission, so there is nothing to upload anywhere. When the
tests pass locally, **commit and push** so your work is recorded:

```bash
git add -A
git commit -m "Activity 4 complete"
git push
```

Pushing triggers the **Autograde** workflow. Confirm your submission landed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "4 / 4 tests passed" summary.
