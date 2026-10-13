(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
let rec upper_ctr (str : string) : int = 
    (* base case: empty string with no uppercase *)
    let rec cps (c : char) : bool = 
        (* helper function to check if char is uppercase *)
        c = (List.nth c 65) || (List.nth c 66) || (List.nth c 67) || 
        (List.nth c 68) || (List.nth c 69) || (List.nth c 70) || 
        (List.nth c 71) || (List.nth c 72) || (List.nth c 73) || 
        (List.nth c 74) || (List.nth c 75)|| 

    match cps with
    | [] -> 0
    | :: (c, rest) -> (if cps c then 1 else 0) + upper_ctr rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec upper_ctr (str : string) : int =
    let rec cps (c : char) : bool =
      c = 'A' || c = 'B' || c = 'C' ||
      c = 'D' || c = 'E' || c = 'F' ||
      c = 'G' || c = 'H' || c = 'I' ||
      c = 'J' || c = 'K' || c = 'L' ||
      c = 'M' || c = 'N' || c = 'O' ||
      c = 'P' || c = 'Q' || c = 'R' ||
      c = 'S' || c = 'T' || c = 'U' ||
      c = 'V' || c = 'W' || c = 'X' ||
      c = 'Y' || c = 'Z'
    in
    match cps with
    | [] -> 0
    | (c, rest) :: _ when cps c -> 1 + upper_ctr rest
    | (_, rest) :: _ -> upper_ctr rest

