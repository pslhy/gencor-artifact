let rec index_minimum (test_list :  (string * int) list) : string =
match test_list with
| (head, head_index) :: _ when head_index = 0 ->
head
| (left_head, left_head_index) :: ((right_head, right_head_index) :: _ as rest) ->
if left_head_index < right_head_index then
left_head 
else 
index_minimum (rest);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
