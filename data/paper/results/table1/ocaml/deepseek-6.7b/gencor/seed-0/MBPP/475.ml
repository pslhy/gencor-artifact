
let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    match dict1 with 
    |[] -> []
    |(x, y)::dict_tail ->
    let sorted_tail = sort_counter dict_tail in
    let rec insert_counter (dict:(string * int) list) (word:string) (c:int) = 
        match dict with
        |[] -> [(word, c)]
        |(w,count)::dict_tail -> 
            if c > count then (word, c)::dict
            else (w,count)::(insert_counter dict_tail word c) 
    in insert_counter sorted_tail x y

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
