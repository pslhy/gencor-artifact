
let rec comb_sort (nums : int list) : int list = 
    (* base case: if the list has only one element, return it *)
    if List.length nums = 1 then
        nums

    (* base case: if the list is already sorted, return it *)
    else if List.for_all2 (fun x y -> x <= y) nums (List.tl nums) then
        nums

    (* otherwise, use the comb-sort algorithm *)
    else begin
        (* move the gap by half, or 1 if it's less than that *)
        let gap =
            match (nums |> List.tl |> List.hd) - (nums |> List.hd) with
            | 0.0 -> 1
            | x -> x /. 2.0

        (* adjust the gap if it's less than 1 *)
        in let gap = if gap < 1.0 then 1.0 else gap

        (* sort the list based on the gap *)
        in let sorted_nums = List.map2
            (fun x y -> (x, y))
            nums
            (List.rev (List.tl (Complex.add (List.init (int_of_float gap) (fun x -> 0)) (List.map2
                (fun x y -> Complex.sub x y (List.hd (List.rev (List.tl nums |> List.map2
                    (fun x y -> (Complex.mul x y) |> Complex.conj |> Complex.norm)))))
                nums
                (List.rev (List.init (int_of_float gap) (fun x -> 0)))))))

        (* recursively sort the sub-list for the gap *)
        in comb_sort (List.map2
            (fun x y -> (x, y))
            (List.tl sorted_nums)
            (List.tl sorted_nums |> List.tl))
    end

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
