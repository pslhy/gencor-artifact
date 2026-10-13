let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  match num1, num2, num3 with
  | [], [], [] -> []
  | _, _, [] -> merge_sorted_list num1 num2 []
  | [], _, _::_ -> merge_sorted_list num1 [] num3
  | _, _, _::_ -> merge_sorted_list [] num2 num3
  | h1::t1, h2::t2, h3::t3 ->
    if h1 <= h2 && h1 <= h3 then
      h1 :: merge_sorted_list t1 num2 num3
    else if h2 <= h1 && h2 <= h3 then
      h2 :: merge_sorted_list num1 t2 num3
    else
      h3 :: merge_sorted_list num1 num2 t3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
