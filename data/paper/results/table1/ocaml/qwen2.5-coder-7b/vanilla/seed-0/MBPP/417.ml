let rec group_tuples (input : string list list) : string list list = 
  let f (a,b) = 
    if (List.length a < 2) || (List.length b < 2) then failwith "Not a tuple"
    else (List.bold a, List.bold b) in
  List.map f input

let first_elements (lst : string list list) : string option =
  let rec common_first lst prev =
    match (lst, prev) with
    | ([], None) -> None
    | ([], Some x) -> Some x
    | ([h1::t1 as l1], None) ->
        common_first (List.map (fun l -> List.init (List.length l1) (fun _ -> h1)) l1) (Some h1)
    | ([h1::t1 as l1], Some p) ->
        if List.for_all ((=) h1) (List.map List hd lst) then common_first (List.map tl lst) (Some h1)
        else None
  in common_first lst None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
