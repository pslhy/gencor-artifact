
let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    match dict1 with 
    | [] -> [] 
    | (str, x) :: xs -> 
        let smaller, equal, larger = List.partition (fun (_, y) -> y <= x) xs in
        let equal = (str, x) :: equal in
        let larger = sort_counter larger in
        smaller @ equal @ larger

let sort_counter l = 
    let rec aux acc l = 
        match l with 
        | [] -> acc
        | (x, v) :: r -> 
            if List.exists (fun (_, y) -> y = v) acc then acc
            else aux ((x,v) :: acc ) r in 
    aux [] l in_channel_length

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
