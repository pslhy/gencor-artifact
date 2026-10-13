let rec sum_squares (lst : int list) : int =
  match lst with
  | [] -> 0
  | x :: xs -> x * x + sum_squares xs;;

let rec square_or_cube (lst : int list) : int list =
  match lst with
  | [] -> []
  | x :: xs ->
    if x mod 3 = 0 && x mod 4 = 0 then x * x * x :: square_or_cube xs
    else x :: square_or_cube xs;;

let sum_of_squared_or_cubed_integers (lst : int list) : int =
  sum_squares (square_or_cube lst);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     " *)
(*     This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a *)
(*     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not *)
(*     change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. *)
(*     Examples: *)
(*     >>> lst *)
(*     [1; 2; 3] *)
(*     >>> lst *)
(*     [] *)
(*     >>> lst *)
(*     [(-1); (-5); 2; (-1); (-5)] *)
