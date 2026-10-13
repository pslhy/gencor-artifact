let rec count_occurance (s : string) : int = 
    (* Declare and initialize a variable to hold the result of count of `std` substring *)
    let mutable count = 0 in
    (* Iterate through all characters of the input string *)
    for i = 0 to String.length s do
        (* If the substring at the current index is equal to `std`, increment the count variable *)
        if s.[i] = 's' && s.[i+1] = 't' && s.[i+2] = 'd' then
            count <- count + 1
    done;
    (* Return the resulting count of `std` substring *)
    count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
