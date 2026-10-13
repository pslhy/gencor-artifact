let rec max_sum (arr : int list) : int =
    let rec increase (array: int list) (index: int) (incr_arr : int list) : int list =
        if index = List.length array then incr_arr
        else
            if (incr_arr = [] || array.((index - 1) ) < List.hd incr_arr) &&
            (array.(index) > List.hd (List.rev inc_arr)) then
            increase array (index + 1) (array.((index) :: incr_arr))
            else increase array (index + 1) incr_arr in

    let rec decrease (array : int list) (index : int) (decr_arr : int list) : int list =
        if index = List.length array then decr_arr
        else
            if (decr_arr = [] || array.((index - 1) ) > List.hd decr_arr) &&
            (array.(index) < List.hd (List.rev decr_arr)) then
             decrease array (index + 1) (array.((index) :: decr_arr))
            else decrease array (index + 1) decr_arr in
                    
    let incr_seq = increase arr 0 [] in
    let decr_seq = decrease arr (List.length arr - 1) [] in 
    let rec max_element (list : int list) (index : int) (max : int) : int =
        if index = List.length list then max
        else 
            if list.(index) > max then max_element list (index + 1) list.(index)
            else max_element list (index + 1) max in
    max_element (incr_seq @ decr_seq) 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
