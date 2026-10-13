let rec text_match_two_three (text : string) : bool =
    match text with
    | [] | [_] -> false
    | 'a' :: ['b'] -> true
    | 'a' :: ['b'; 'b'] -> true
    | 'a' :: ['b'; 'b'; 'b'] -> true
    | _ -> false

(* Tail Recursive Version *)
let text_match_two_three (text : string) : bool =
    let rec aux acc = function
        | [] -> acc
        | 'a' :: ['b'] -> acc + 1
        | 'a' :: ['b'; 'b'] -> acc + 2
        | 'a' :: ['b'; 'b'; 'b'] -> acc + 3
        | _ -> acc
    in
    let rec loop acc = function
        | [] -> acc
        | 'a' :: b :: rest -> loop (acc + 1) (b :: rest)
        | 'a' :: [] -> acc
        | c -> acc
    in
    loop 0 (aux 0 text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
