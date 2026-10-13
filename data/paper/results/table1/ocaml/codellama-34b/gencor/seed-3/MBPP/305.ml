
let rec start_withp (words : string list) :  string * string = 
    match words with
    | [] -> 
        raise (Failure "List contains no words starting with 'p'")
    | x :: _ when String.get x 0 = 'p' -> (x, List.hd (List.filter (fun y -> String.get y 0 != 'p') words))
    | _ :: tail -> start_withp tail

let test_start_withp () =
    let words = ["Peter", "Piper", "picked", "a", "peck", "of", "pickled", "peppers"] in
    let (p1, p2) = start_withp words in
    if p1 = "picked" && p2 = "pickled" then true else false |> Assert_failure

let _ = test_start_withp ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
