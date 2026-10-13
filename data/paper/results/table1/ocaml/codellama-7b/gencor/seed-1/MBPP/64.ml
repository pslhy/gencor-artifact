
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
    
let sort_by_second (studentmarks :  (string * int) list) :  (string * int) list =
List.sort_uniq (fun (s,m) (s',m') -> (m < m')) studentmarks in_channel_length = 0;
  exit 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
