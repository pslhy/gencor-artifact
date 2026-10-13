let rec remove_parenthesis (items : string list) : string =
    match items with
    | [] -> []
    | _ ->
        let result =
            List.fold_right (fun x (acc : string list) ->
                match x with
                | "(" ->
                | ")" ->
                | _ -> acc
            ) items []
        in
        result
    | _ -> items

let _ = remove_parenthesis ["{1 + (2 * 3)}"; "{1 + (4 * 5)}"; "6"]
(* [1; 2; 3; 4; 5; 6] *)

let _ = remove_parenthesis ["{1 + (2 * 3)}"; "{1 + (4 * 5)}"; "6"]
(* [1; 2; 3; 4; 5; 6] *)

let _ = remove_parenthesis ["{1 + (2 * 3)}"; "{1 + (4 * 5)}"; "6"]
(* [1; 2; 3; 4; 5; 6] *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
