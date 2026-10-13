(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | 'a' :: rest -> 'A' :: helper rest
    | 'b' :: rest -> 'B' :: helper rest
    | 'c' :: rest -> 'C' :: helper rest
    | 'd' :: rest -> 'D' :: helper rest
    | 'e' :: rest -> 'E' :: helper rest
    | 'f' :: rest -> 'F' :: helper rest
    | 'g' :: rest -> 'G' :: helper rest
    | 'h' :: rest -> 'H' :: helper rest
    | 'i' :: rest -> 'I' :: helper rest
    | 'j' :: rest -> 'J' :: helper rest
    | 'k' :: rest -> 'K' :: helper rest
    | 'l' :: rest -> 'L' :: helper rest
    | 'm' :: rest -> 'M' :: helper rest
    | 'n' :: rest -> 'N' :: helper rest
    | 'o' :: rest -> 'O' :: helper rest
    | 'p' :: rest -> 'P' :: helper rest
    | 'q' :: rest -> 'Q' :: helper rest
    | 'r' :: rest -> 'R' :: helper rest
    | 's' :: rest -> 'S' :: helper rest
    | 't' :: rest -> 'T' :: helper rest
    | 'u' :: rest -> 'U' :: helper rest
    | 'v' :: rest -> 'V' :: helper rest
    | 'w' :: rest -> 'W' :: helper rest
    | 'x' :: rest -> 'X' :: helper rest
    | 'y' :: rest -> 'Y' :: helper rest
    | 'z' :: rest -> 'Z' :: helper rest
    | 'A' :: rest -> 'a' :: helper rest
    | 'B' :: rest -> 'b' :: helper rest
    | 'C' :: rest -> 'c' :: helper rest
    | 'D' :: rest -> 'd' :: helper rest
    | 'E' :: rest -> 'e' :: helper rest
    | 'F' :: rest -> 'f' :: helper rest
    | 'G' :: rest -> 'g' :: helper rest
    | 'H' :: rest -> 'h' :: helper rest
    | 'I' :: rest -> 'i' :: helper rest
    | 'J' :: rest -> 'j' :: helper rest
    | 'K' :: rest -> 'k' :: helper rest
    | 'L' :: rest -> 'l' :: helper rest
    | 'M' :: rest -> 'm' :: helper rest
    | 'N' :: rest -> 'n' :: helper rest
    | 'O' :: rest -> 'o' :: helper rest
    | 'P' :: rest -> 'p' :: helper rest
    | 'Q' :: rest -> 'q' :: helper rest
    | 'R' :: rest -> 'r' :: helper rest
    | 'S' :: rest -> 's' :: helper rest
    | 'T' :: rest -> 't' :: helper rest
    | 'U' :: rest -> 'u' :: helper rest
    | 'V' :: rest -> 'v' :: helper rest
    | 'W' :: rest -> 'w' :: helper rest
    | 'X' :: rest -> 'x' :: helper rest
    | 'Y' :: rest -> 'y' :: helper rest
    | 'Z' :: rest -> 'z' :: helper rest
    | _ :: rest -> raise (Invalid_argument "Invalid character")
  in 
  List.rev (helper (String.to_list string))
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:60:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | 'a' -> 'A' :: helper
    | 'b' -> 'B' :: helper
    | 'c' -> 'C' :: helper
    | 'd' -> 'D' :: helper
    | 'e' -> 'E' :: helper
    | 'f' -> 'F' :: helper
    | 'g' -> 'G' :: helper
    | 'h' -> 'H' :: helper
    | 'i' -> 'I' :: helper
    | 'j' -> 'J' :: helper
    | 'k' -> 'K' :: helper
    | 'l' -> 'L' :: helper
    | 'm' -> 'M' :: helper
    | 'n' -> 'N' :: helper
    | 'o' -> 'O' :: helper
    | 'p' -> 'P' :: helper
    | 'q' -> 'Q' :: helper
    | 'r' -> 'R' :: helper
    | 's' -> 'S' :: helper
    | 't' -> 'T' :: helper
    | 'u' -> 'U' :: helper
    | 'v' -> 'V' :: helper
    | 'w' -> 'W' :: helper
    | 'x' -> 'X' :: helper
    | 'y' -> 'Y' :: helper
    | 'z' -> 'Z' :: helper
    | 'A' -> 'a' :: helper
    | 'B' -> 'b' :: helper
    | 'C' -> 'c' :: helper
    | 'D' -> 'd' :: helper
    | 'E' -> 'e' :: helper
    | 'F' -> 'f' :: helper
    | 'G' -> 'g' :: helper
    | 'H' -> 'h' :: helper
    | 'I' -> 'i' :: helper
    | 'J' -> 'j' :: helper
    | 'K' -> 'k' :: helper
    | 'L' -> 'l' :: helper
    | 'M' -> 'm' :: helper
    | 'N' -> 'n' :: helper
    | 'O' -> 'o' :: helper
    | 'P' -> 'p' :: helper
    | 'Q' -> 'q' :: helper
    | 'R' -> 'r' :: helper
    | 'S' -> 's' :: helper
    | 'T' -> 't' :: helper
    | 'U' -> 'u' :: helper
    | 'V' -> 'v' :: helper
    | 'W' -> 'w' :: helper
    | 'X' -> 'x' :: helper
    | 'Y' -> 'y' :: helper
    | 'Z' -> 'z' :: helper
    | _ -> raise (Invalid_argument "Invalid character")
    in 
  List.rev (helper (String.to_list string))

