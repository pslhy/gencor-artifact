
let rec frequency_lists (list1 : int list list) : (int * int) list = 
    let helper (list1 : int list) (list2 : int list) : (int * int) list = 
        match list2 with 
        | [] -> [] 
        | h :: t -> let freq = List.filter (fun x -> x = h) list2 |> List.length in
                   (h, freq) :: (List.append list1 @@ [(h, freq)]) in
    let helper1 (list1 : int list list) : (int * int) list = 
        match list1 with 
        | [] -> [] 
        | h :: t -> List.fold_left helper h t in
    helper1 list1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
