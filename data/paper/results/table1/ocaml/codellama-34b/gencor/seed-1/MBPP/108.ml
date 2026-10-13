
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    let rec aux num1 num2 num3 acc =
        match num1, num2, num3 with
        | [], [], [] -> acc
        | n1 :: t1, [], t2 -> aux t1 [] (n1 :: t2 :: acc)
        | t1, n2 :: t2, [] -> aux [] t1 (n2 :: t2 :: acc)
        | t1, [], n3 :: t3 -> aux [] t1 (n3 :: t3 :: acc)
        | n1 :: t1, n2 :: t2, n3 :: t3 ->
            if n1 <= n2 && n1 <= n3 then
                aux t1 (n2 :: t2) (n3 :: t3) (n1 :: acc)
            else if n2 <= n1 && n2 <= n3 then
                aux t1 (n1 :: t2) (n3 :: t3) (n2 :: acc)
            else
                aux t1 (n1 :: t2) (n2 :: t3) (n3 :: acc)
    in
    aux num1 num2 num3 [] |> List.rev

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
