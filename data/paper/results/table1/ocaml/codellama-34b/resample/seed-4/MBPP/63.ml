(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
let rec max_difference (test_list :  (int * int) list) : int = 
    (* base case: if only one pair is available *)
    let (a, b) = 
        match test_list with 
        | [(a, b)] -> (a, b) 
        | _ -> raise (Failure "Invalid input")
    in
    b - a

(* recursive case: more than one pair available *) 
let (a, b) = 
    match test_list with 
    | (a, b) :: tail -> (a, b)
    | _ -> raise (Failure "Invalid input")

let (c, d) =
    let rec loop ((c, d) : (int * int) list) : (int * int) =
        match c with 
        | None -> c
        | Some (c, d) -> loop (Some (c, d))
    in loop (max_difference tail)

max(b - a, d - c)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:11: Unbound value "test_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int = 
    match test_list with 
    | [] -> 0
    | (a, b) :: tail -> 
        let (c, d) =
            let rec loop (c, d) =
                match c with 
                | None -> c
                | Some (c, d) -> loop (Some (c, d))
            in loop (max_difference tail)
        in 
        max(b - a, d - c)

