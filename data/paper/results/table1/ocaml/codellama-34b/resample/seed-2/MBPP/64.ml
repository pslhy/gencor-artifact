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
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subjects with
         | [] -> (subject, mark) :: sorted_subjects
         | ( _, sorted_mark) :: _ ->
           if mark <= sorted_mark then
             (subject, mark) :: (_, sorted_mark) :: sorted_subjects
           else
             sorted_subject:: sorted_marks @ [(subject, mark)]
       loop (subject, mark) ([], sorted_marks)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:34: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subjects with
         | [] -> (subject, mark) :: sorted_subjects
         | ( _, sorted_mark) :: _ ->
           if mark <= sorted_mark then
             (subject, mark) :: (_, sorted_mark) :: sorted_subjects
           else
             sorted_subject:: sorted_marks @ [(subject, mark)]
       loop (subject, mark) ([], sorted_marks)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:34: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subjects with
         | [] -> (subject, mark) :: sorted_subjects
         | (_, sorted_mark) :: _ ->
           if mark <= sorted_mark then
             (subject, mark) :: (sorted_subject, sorted_mark) :: sorted_subjects
           else
             sorted_subject:: sorted_marks @ [(subject, mark)]
       loop (subject, mark) ([], sorted_marks)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subjects with
         | [] -> (subject, mark) :: sorted_subjects
         | (_, sorted_mark) :: _ ->
           if mark <= sorted_mark then
             (subject, mark) :: (sorted_subject, sorted_mark) :: sorted_subjects
           else
             sorted_subject:: sorted_marks @ [(subject, mark)]
       loop (subject, mark) ([], sorted_marks)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subjects with
         | [] -> (subject, mark) :: sorted_subjects
         | (sorted_subject, sorted_mark) :: _ ->
           if mark <= sorted_mark then
             (subject, mark) :: (sorted_subject, sorted_mark) :: sorted_subjects
           else
             sorted_subject:: sorted_marks @ [(subject, mark)]
       loop (subject, mark) ([], sorted_marks)

