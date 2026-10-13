let rec int_to_mini_roman (number : int) : string =
  let nums = [1; 4; 5; 9; 10; 40; 50; 90; 100; 400; 500; 900; 1000] in
  let syms = ['i'; 'iv'; 'v'; 'ix'; 'x'; 'xl'; 'l'; 'xc'; 'c'; 'cd'; 'd'; 'cm'; 'm'] in
  let rec helper (n : int) (s : char list) (curr : int) : string =
    match n, s with
    | 0, _ -> ""
    | _, [] -> String.make 1 (Char.lowercase_ascii (List.nth syms (curr - 1))) ^ helper n [] (curr - 1)
    | _, _ -> if n >= List.nth nums curr then String.make 1 (Char.lowercase_ascii (List.nth syms curr)) ^ helper (n - List.nth nums curr) s curr
              else helper n s (curr - 1) in
  helper number syms (List.length nums - 1)


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
