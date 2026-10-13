let rec split_Arr (l : int list) (n : int) : int list =
    match l with
    | [] -> []
    | _ :: xs when n > 0 -> List.append (List.take n l) (List.drop n l)
    | _ -> List.rev (List.take n l)

let split_Arr_my l n =
    let rec split_Arr' l n acc =
        match l with
        | [] -> acc
        | h :: t -> split_Arr' t n (h :: acc)
    in
    split_Arr' l n []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
