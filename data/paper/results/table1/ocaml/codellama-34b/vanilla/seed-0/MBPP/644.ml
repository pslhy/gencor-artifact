let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if (k <= 1) then begin
        let (result, _) = reverse_Array_Acc(input, [])
        result
    end
    else begin
        let last_index = (k - 1)
        let (acc, _) = reverse_Array_Acc(input, [])
        let reversed_first_part = List.take(k, acc)
        let reversed_second_part = List.drop(k, acc)
        reversed_first_part @ reversed_second_part;
    end;

and reverse_Array_Acc (input : int list) (acc : int list) : (int list) * (int list) =
    match input with
    | [] -> (acc, [])
    | h :: t -> reverse_Array_Acc(t, h :: acc)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
