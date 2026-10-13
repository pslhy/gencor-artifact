let rec minPath (grid : int list list) (k : int) : int list =
    let n = List.length grid in
    let m = List.length grid.(0) in
    let rec aux grid currPath currSum currIndex =
        if currIndex >= k then
            currPath
        else if currSum < k then
            raise (Invalid_argument "k")
        else if currSum = k then
            [currPath]
        else
            let next = List.filter (fun x -> not (List.mem x currPath)) grid in
            let rec aux2 i =
                if i >= n * m then
                    []
                else
                    let row = grid.(i / m) in
                    let col = i mod m in
                    let nextRow = i / m + 1 in
                    let nextCol = col in
                    if nextRow >= 0 && nextCol >= 0 && nextRow < n && nextCol < m then
                        grid.(nextRow).(nextCol)
                    else
                        grid.(i)
            in
            List.map (fun x -> aux aux2 (x :: currPath) (currSum + x) (currIndex + 1)) next
    in
    aux grid [] 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a grid with N rows and N columns (N >= 2) and a positive integer k, *)
(*     each cell of the grid contains a value. Every integer in the range [1, N * N] *)
(*     inclusive appears exactly once on the cells of the grid. *)
(*     You have to find the minimum path of length k in the grid. You can start *)
(*     from any cell, and in each step you can move to any of the neighbor cells, *)
(*     in other words, you can go to cells which share an edge with you current *)
(*     cell. *)
(*     Please note that a path of length k means visiting exactly k cells (not *)
(*     necessarily distinct). *)
(*     You CANNOT go off the grid. *)
(*     A path A (of length k) is considered less than a path B (of length k) if *)
(*     after making the ordered lists of the values on the cells that A and B go *)
(*     through (let's call them lst_A and lst_B), lst_A is lexicographically less *)
(*     than lst_B, in other words, there exist an integer index i (1 <= i <= k) *)
(*     such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have *)
(*     lst_A[j] = lst_B[j]. *)
(*     It is guaranteed that the answer is unique. *)
(*     Return an ordered list of the values on the cells that the minimum path go through. *)
(*     Examples: *)
(*     >>> minPath [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] 3 *)
(*     [1; 2; 1] *)
(*     >>> minPath [[5; 9; 3]; [4; 1; 6]; [7; 8; 2]] 1 *)
(*     [1] *)
