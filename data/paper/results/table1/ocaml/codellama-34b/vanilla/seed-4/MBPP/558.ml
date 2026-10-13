let rec digit_distance_nums (n1 : int) (n2 : int) : int = 
    let (num1, num2) = (abs n1, abs n2) in
    let (len1, len2) = (string_of_int num1 |> String.length, string_of_int num2 |> String.length) in
    let rec aux (n1 : int) (n2 : int) (acc : int) : int =
        if n1 = 0 || n2 = 0 then acc
        else
            let (_, t1) = string_of_int n1 |> String.split_on_char '0' in
            let (_, t2) = string_of_int n2 |> String.split_on_char '0' in
            let diff = abs (int_of_char t1 - int_of_char t2) in
            aux (n1 / 10) (n2 / 10) (acc + diff)
    in
    if len1 < len2 then aux num2 num1 0
    else aux num1 num2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
