let rec even_odd_count (num : int) :  int * int =
  let str_num = string_of_int (abs num) in
  let even_counter = ref 0 in
  let odd_counter  = ref 0 in
  for i = 0 to (String.length str_num) - 1 do
    if (int_of_string (String.make 1 str_num.[i])) mod 2 = 0 then
      incr even_counter
    else
      incr odd_counter
  done;
  (!even_counter, !odd_counter)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
