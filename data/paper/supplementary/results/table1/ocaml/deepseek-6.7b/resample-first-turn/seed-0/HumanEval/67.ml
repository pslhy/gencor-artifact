let rec fruit_distribution (s : string) (n : int) : int =
    let num_apples = int_of_string (String.sub s 0 (String.index_opt s ' ' |> Option.value ~default:(String.length s)))
    and num_oranges = int_of_string (
        String.sub s (String.index_opt s ' ' |> Option.value ~default:(String.length s)) (String.length s - (String.index_opt s ' ' |> Option.value ~default:(String.length s)))
    ) - num_apples in
    n - num_apples - num_oranges


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
