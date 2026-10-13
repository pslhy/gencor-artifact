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
| (s,m) :: tail ->
   let sorted_tail = subject_marks tail in
   let rec insert_in_order ((s,m)::sorted_tail) =
   function (s',m') ->
   if (m < m') then
   (s',m) :: (s,m') :: sorted_tail
   else
   (s,m) :: (insert_in_order sorted_tail (s',m')) in
   insert_in_order sorted_tail (s,m)
end;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | [] -> []
  | (s,m) :: tail ->
    let sorted_tail = subject_marks tail in
    let rec insert_in_order (s,m) =
      function (s',m') ->
      if (m < m') then
        (s,m) :: (s',m') :: tail
      else
        (s,m) :: (insert_in_order (s',m') tail)
    in
    insert_in_order (s,m) sorted_tail;
  end;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | [] -> []
  | (s,m) :: tail ->
    let sorted_tail = subject_marks tail in
    let rec insert_in_order (s,m) =
      function (s',m') ->
      if (m < m') then
        (s,m) :: (s',m') :: tail
      else
        (s,m) :: (insert_in_order (s',m') tail)
    in
    insert_in_order (s,m) sorted_tail;

