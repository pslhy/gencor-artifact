let rec cube_nums (nums : int list) : int list = 
    match nums with 
      head :: tail ->  (head ** 3) :: (cube_nums tail)
      | [] -> []

let _ = print_endline (String.concat ", " (List.map string_of_int (cube_nums [1; 2; 3; 4; 5; 6])))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find cubes of individual elements in a list. *)
