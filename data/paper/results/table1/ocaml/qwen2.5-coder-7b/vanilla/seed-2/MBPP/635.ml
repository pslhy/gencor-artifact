let rec heap_sort (iterable : int list) : int list = 
    let rec heapify (arr : int list) (n : int) (i : int) : int list = 
        let largest = ref i in
        let l = 2 * i + 1 in
        let r = 2 * i + 2 in
        if (l < n && (List.nth arr l > List.nth arr !largest)) then largest := l;
        if (r < n && (List.nth arr r > List.nth arr !largest)) then largest := r;
        if (!largest <> i) then begin
            let temp = List.nth arr !largest in
            arr.(i) <- arr.(!largest);
            arr.(!largest) <- temp;
            arr <- heapify arr n !largest;
        end;
        arr in
    
    let build_max_heap (arr : int list) (n : int) : int list = 
        for i = n / 2 - 1 downto 0 do
            arr <- heapify arr n i
        done;
        arr in
    
    let extract_max (arr : int list) (n : ref int) : int list * int =
        let maxItem = List.nth arr 0 in
        arr.(0) <- List.nth arr (!n - 1);
        !n := !n - 1;
        arr <- heapify arr !n 0;
        (arr, maxItem) in
    
    let rec sort (arr : int list) : int list = 
        match arr with
        | [] -> []
        | _ -> 
            let n = ref (List.length arr) in
            arr <- build_max_heap arr !n;
            let sorted_arr = ref [] in
            for i = List.length arr - 1 downto 0 do
                (arr, let maxItem = extract_max arr n in maxItem) |>
                fun (arr, maxItem) -> sorted_arr := maxItem :: !sorted_arr;
            done;
            !sorted_arr in
    
    sort (Array.of_list iterable) |> Array.to_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
