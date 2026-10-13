let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    let rec aux num1 num2 result =
        match num1, num2 with
        | [], [] -> result
        | [], [h2 :: t2] -> h2 :: (aux num1 t2 result)
        | [h1 :: t1], [] -> h1 :: (aux t1 num2 result)
        | [h1 :: t1], [h2 :: t2] ->
            if h1 <= h2 then
                h1 :: (aux t1 num2 result)
            else
                h2 :: (aux num1 t2 result)
     in
     match num1, num2 with
     | [], [] -> []
     | [h1 :: t1], _ -> (aux num1 num2 [h1])
     | _, [h2 :: t2] -> (aux num1 num2 [h2])
     | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
