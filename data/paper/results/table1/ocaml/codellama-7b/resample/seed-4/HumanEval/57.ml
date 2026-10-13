(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
let rec monotonic (l : int list) : bool = 
    match l with 
    | head :: [] -> 
    | head :: (second :: rest) -> 
        let check = 
            if head >= second then 
                monotonic (second :: rest) 
            else 
                monotonic (second :: rest) 
        in check 
    | _ -> true 
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec monotonic (l : int list) : bool = 
    match l with 
    | head :: [] -> true 
    | head :: (second :: rest) -> 
        let check = 
            if head >= second then 
                monotonic (second :: rest) 
            else 
                monotonic (second :: rest) 
        in check 
    | _ -> false 
    

