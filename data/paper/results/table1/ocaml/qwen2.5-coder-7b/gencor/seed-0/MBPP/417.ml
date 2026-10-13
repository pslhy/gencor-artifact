
let rec group_tuples (input : string list list) : string list list = 
  let f (a,b) = 
    if (List.length a < 2) || (List.length b < 2) then failwith "Not a tuple"
    else (List.hd a, List.tl a, List.hd b, List.tl b) in
  List.map f input

let common_first (input : string list list) : string option =
  let rec find_common first rest =
    match rest with
    | [] -> Some first
    | (x::xs) ->
        if x = first then find_common first xs
        else None in
  match input with
  | [] -> None
  | x::xs ->
      let grouped = group_tuples xs in
      let first_elements = List.map (fun (a,_,_) -> a) grouped in
      find_common x first_elements

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
