let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    let rec aux num1 num2 num3 acc =
        match num1, num2, num3 with
        | [], [], [] -> acc
        | n1 :: t1, [], t2@[m, r] -> aux t1 (t2@[n1]) t3 (acc @[n1])
        | n1 :: t1, [], t2@[] -> aux t1 (t2@[n1, r]) t3 (acc @[n1, r])
        | empty, n2 :: t2, empty -> aux empty (num2 @[n1]) t3 (acc @[n2])
        | empty, n2 :: t2, n3 :: t3 -> aux empty num2 t3 (acc @[n2])
        | empty, empty, n3 :: t3 -> aux empty num2 t3 (acc @[n3])
        | num1, num2, empty -> aux num1 num2 t3 acc
        | num1, empty, num3 -> aux num1 t2 t3 (acc @[num2])
        | empty, num2, num3 -> aux t1 t2 t3 (acc @[num2])
    in
    aux num1 num2 num3 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
