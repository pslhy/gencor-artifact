let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    let m = String.length x and
    n = String.length y and 
    o = String.length z in

   let lcs = Array.make_matrix ~dimx:(m+1) ~dimy:(n*o+1) 0 in
   
   for i = 1 to m do
        for j = 1 to n*o do
            if x.[i-1] = char_of_int( int_of_char(y.[ (j/n) - 1]) ) && x.[i-1] = z.[j mod n] then
                lcs.(i).[(i * n + j)] = lcs.(i-1).[(i-1)*n + (j-1)] + 1
            else
                lcs.(i).[(i * n + j)] = max (lcs.(i-1).[(i*n + j)]) (lcs.(i).[(i*n + j-1)]) ;;
   lcs.(m).[(m*n + o)];;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
