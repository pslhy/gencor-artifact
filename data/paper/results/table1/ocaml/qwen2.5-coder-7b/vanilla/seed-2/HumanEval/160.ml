let rec do_algebra (operator : string list) (operand : int list) : int = 
    let rec find_index (op : string) (lst : string list) : int =
        match lst with
        | [] -> -1
        | h::t -> if h = op then 0 else 1 + find_index op t
    in
    let rec calc_at_priority (ops : string list) (nums : int list) : int =
        match ops with
        | [] -> nums
        | "*"::t -> calc_at_priority t ((nums.(0) * nums.(1))::Array.to_list (Array.sub (Array.of_list nums) 2 (Array.length (Array.of_list nums) - 2)))
        | "//"::t -> calc_at_priority t ((nums.(0) / nums.(1))::Array.to_list (Array.sub (Array.of_list nums) 2 (Array.length (Array.of_list nums) - 2)))
        | "**"::t -> calc_at_priority t ((int_of_float (float_of_int nums.(0) ** float_of_int nums.(1)))::Array.to_list (Array.sub (Array.of_list nums) 2 (Array.length (Array.of_list nums) - 2)))
        | _ -> ops
    in
    let rec add_subtract (ops : string list) (nums : int list) : int =
        let len = List.length ops in
        let plus_index = find_index "+" ops in
        let minus_index = find_index "-" ops in
        if plus_index >= 0 then
            let a = nums.(plus_index) in
            let b = nums.(plus_index + 1) in
            let rest = Array.to_list (Array.sub (Array.of_list nums) (plus_index + 2) (len - plus_index - 2)) in
            add_subtract (List.filter (fun x -> x <> "+") ops) ((a + b)::rest)
        else if minus_index >= 0 then
            let a = nums.(minus_index) in
            let b = nums.(minus_index + 1) in
            let rest = Array.to_list (Array.sub (Array.of_list nums) (minus_index + 2) (len - minus_index - 2)) in
            add_subtract (List.filter (fun x -> x <> "-") ops) ((a - b)::rest)
        else
            nums
    in
    List.fold_left (fun acc op -> calc_at_priority (legit :: acc) nums) [] operator
    |> add_subtract operator
    |> List.head

let _ = do_algebra ["+" ; "*" ; "-"] [2 ; 3 ; 4 ; 5]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two lists operator, and operand. The first list has basic algebra operations, and *)
(*     the second list is a list of integers. Use the two given lists to build the algebric *)
(*     expression and return the evaluation of this expression. *)
(*     The basic algebra operations: *)
(*     Addition ( + ) *)
(*     Subtraction ( - ) *)
(*     Multiplication ( * ) *)
(*     Floor division ( // ) *)
(*     Exponentiation ( ** ) *)
(*     Example: *)
(*     operator['+', '*', '-'] *)
(*     list = [2, 3, 4, 5] *)
(*     result = 2 + 3 * 4 - 5 *)
(*     => result = 9 *)
(*     Note: *)
(*     The length of operator list is equal to the length of operand list minus one. *)
(*     Operand is a list of of non-negative integers. *)
(*     Operator list has at least one operator, and operand list has at least two operands. *)
