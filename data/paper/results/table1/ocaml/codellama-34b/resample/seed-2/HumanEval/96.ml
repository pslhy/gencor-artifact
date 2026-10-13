(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
let rec count_up_to (n : int) : int list =
    match n with
    | 0 -> []
    | 1 -> [2]
    | _ ->
        let rec loop (i : int) (acc : int list) : int list =
            if i >= n then acc
            else if is_prime i then loop (i + 1) (i :: acc)
            else loop (i + 1) acc
        in
        loop 2 []
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:21: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
    match n with
    | 0 -> []
    | 1 -> [2]
    | _ ->
        let rec loop (i : int) (acc : int list) : int list =
            if i >= n then acc
            else if i mod 2 = 0 || i mod 3 = 0 || i mod 5 = 0 || i mod 7 = 0 then loop (i + 1) (i :: acc)
            else loop (i + 1) acc
        in
        loop 2 []
;;

