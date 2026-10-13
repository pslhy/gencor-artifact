let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    let compare (x1 : string * int) (y1 : string * int) =
    let x = snd x1 in 
    let y = snd y1 in 
    if x < y then 1 else if x = y then 0 else -1 
    in
    let rec sort lst = 
    match lst with 
    | [] -> [] 
    | [(k,v)] -> [(k,v)] 
    | (k1,v1)::(k2,v2)::t -> 
        if (v1 > v2) then 
        (k2,v2)::sort((k1,v1)::t) 
        else 
        (k1,v1)::sort((k2,v2)::t) 
    in List.sort compare dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
