
let rec int_to_mini_roman (number : int) : string =
  let nums = [1; 4; 5; 9; 10; 40; 50; 90; 100; 400; 500; 900; 1000] in
  let syms = ['i'; 'v'; 'x'; 'x'; 'l'; 'l'; 'c'; 'c'; 'd'; 'd'; 'm'; 'm'] in
  let rec loop num i res =
    if num = 0 then res
    else
      if List.nth nums i >= num then loop num (i + 1) (String.make 1 (List.nth syms i) ^ res)
      else loop (num - List.nth nums i) i res
  in loop number 0 "";;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
