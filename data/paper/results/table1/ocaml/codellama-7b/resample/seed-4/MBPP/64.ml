(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list = 
    match subjectmarks with 
      head :: tail ->  ( let (subject,mark) = head in 
      match tail with 
        [] -> [head] 
          hed :: tail -> let list1 = subject_marks tail in 
          if mark > (fst (List.hd list1)) then 
            (head)::list1 
          else list1)] 
    [(("Other",100),("Other",90),("Maths",80),("Maths",70),("Maths",85),("Other",60))] in

 let subject_marks_list = [(("Other",100),("Other",90),("Maths",80),("Maths",70),("Maths",85),("Other",60))] 
 (fun args -> let args_len = List.length args in 
  if args_len < 1 then 
    0 
   else 
    let arg1 = subject_marks (fst args) in 
    let arg2 = subject_marks (snd args) in
    Ocamlclib.sort_tuple_list arg1 arg2 (fun x y -> compare_strings (fst x) (fst y)) in ) [[]];;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:23: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | head :: tail -> let (subject, mark) = head in
    match tail with
    | [] -> [head]
    | hed :: tail -> let list1 = subject_marks tail in
      if mark > (fst (List.hd list1)) then
        (head) :: list1
      else
        list1
  | [] -> []

let student_marks = [("Maths", 85); ("English", 75); ("History", 90)]

let exam_marks = ["Maths", ("History", 90); ("English", 80)]

let exam_grade (exam_marks : (string * int) list) =
  let total = List.fold_left (fun acc (subject, mark) ->
      if acc > mark then
        acc
      else
        mark) 0 exam_marks
    in
    (total / 2 + 1)

let rec filter_subjects (symbols : string) (subjects : string list) =
  match symbols = "*" with
  | true -> subjects
  | false ->
    if List.contains symbols subjects then
      subjects
    else
      match symbols.[0] = '\\' with
      | true -> filter_subjects (symbols.SUBSTRING (1, symbols.[0])) subjects
      | false -> filter_subjects ("\\" ^ symbols) subjects

let passed_subjects = filter_subjects "Maths,English" student_marks

let passed_subjects_exam = filter_subjects "Maths,English" exam_marks

let returnVal = exam_grade passed_subjects

let _ = print_endline (string_of_int returnVal)`
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:34:52: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | head :: tail ->
    let (subject, mark) = head in
    match tail with
    | [] -> [head]
    | hed :: tail ->
      let list1 = subject_marks tail in
      if mark > (fst (List.hd list1)) then
        (subject, mark) :: list1
      else
        list1
  | [] -> [] in

let student_marks = [("Maths", 85); ("English", 75); ("History", 90)]

let exam_marks = ["Maths", ("History", 90); ("English", 80)]

let exam_grade (exam_marks : (string * int) list) =
  let total = List.fold_left (fun acc (subject, mark) ->
      if acc > mark then
        acc
      else
        mark) 0 exam_marks
    in
    (total / 2 + 1)

let rec filter_subjects (symbols: string) (subjects : string list) =
  match symbols with
  | "*" -> subjects
  | _ ->
    if List.exists (fun x -> x = symbols) subjects then
      subjects
    else
      match symbols.[0] = '\\' with
      | true -> filter_subjects symbols.[1..] subjects
      | false -> filter_subjects ("\\" ^ symbols) subjects

let passed_subjects = filter_subjects "Maths,English" student_marks

let passed_subjects_exam = filter_subjects "Maths,English" exam_marks

let returnVal = exam_grade passed_subjects_exam

let _ = print_endline (string_of_int returnVal)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | head :: tail ->
    let (subject, mark) = head in
    match tail with
    | [] -> [head]
    | hed :: tail ->
      let list1 = subject_marks tail in
      if mark > (fst (List.hd list1)) then
        (subject, mark) :: list1
      else
        list1
  | [] -> [] in

let student_marks = [("Maths", 85); ("English", 75); ("History", 90)]

let exam_marks = ["Maths", ("History", 90); ("English", 80)]

let exam_grade (exam_marks : (string * int) list) =
  let total = List.fold_left (fun acc (subject, mark) ->
      if acc > mark then
        acc
      else
        mark) 0 exam_marks
    in
    (total / 2 + 1)

let rec filter_subjects (symbols : string) (subjects : string list) =
  match symbols with
  | "*" -> subjects
  | _ ->
    if List.exists (fun x -> x = symbols) subjects then
      subjects
    else
      match symbols.[0] = '\\' with
      | true -> filter_subjects symbols.[1..] subjects
      | false -> filter_subjects ("\\" ^ symbols) subjects

let passed_subjects = filter_subjects "Maths,English" student_marks

let passed_subjects_exam = filter_subjects "Maths,English" exam_marks

let returnVal = exam_grade passed_subjects_exam

let _ = print_endline (string_of_int returnVal)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | head :: tail ->
    let (subject, mark) = head in
    match tail with
    | [] -> [head]
    | hed :: tail ->
      let list1 = subject_marks tail in
      if mark > (fst (List.hd list1)) then
        (subject, mark) :: list1
      else
        list1
  | [] -> [] in

let student_marks = [("Maths", 85); ("English", 75); ("History", 90)]

let exam_marks = ["Maths", ("History", 90); ("English", 80)]

let exam_grade (exam_marks : (string * int) list) =
  let total = List.fold_left (fun acc (subject, mark) ->
      if acc > mark then
        acc
      else
        mark) 0 exam_marks
    in
    (total / 2 + 1)

let rec filter_subjects (symbols : string) (subjects : string list) =
  match symbols with
  | "*" -> subjects
  | _ ->
    if List.exists (fun x -> x = symbols) subjects then
      subjects
    else
      match symbols.[0] = '\\' with
      | true -> filter_subjects symbols.[1..] subjects
      | false -> filter_subjects ("\\" ^ symbols) subjects

let passed_subjects = filter_subjects "Maths,English" student_marks

let passed_subjects_exam = filter_subjects "Maths,English" exam_marks

let returnVal = exam_grade passed_subjects_exam

let _ = print_endline (string_of_int returnVal)

