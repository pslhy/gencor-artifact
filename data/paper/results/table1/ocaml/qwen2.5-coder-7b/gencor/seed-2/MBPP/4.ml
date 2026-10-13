
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
    let rec heapify lst =
        let rec sift_up arr i =
            let parent = (i - 1) / 2 in
            if i > 0 && arr.(i) > arr.(parent) then
                let temp = arr.(i) in
                arr.(i) <- arr.(parent);
                arr.(parent) <- temp;
                sift_up arr parent
            else arr in
        let arr = Array.of_list lst in
        let len = Array.length arr in
        for i = 0 to len - 1 do
            sift_up arr i
        done;
        List.of_seq (Array.to_seq arr) in

    let rec largest heap k =
        if k = 0 then []
        else match heap with
            | [] -> []
            | x::xs -> x :: largest (List.filter (fun y -> y < x) xs) (k - 1)
    in
    if n <= 0 then []
    else largest (heapify nums) n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
