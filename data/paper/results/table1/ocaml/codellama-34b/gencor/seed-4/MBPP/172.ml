
let rec count_occurance (s : string) : int = 
    (* Declare and initialize a variable to hold the result of count of `std` substring *)
    let mutable_variable = 0 in
    (* Iterate through each index of the given string *)
    for index = 0 to (String.length s - 1) do 
        let current_substring = 
            (* Check if current index plus the length of substring `std` is a valid index in the given string *)
            if (index + String.length "std") <= String.length s 
            then 
                (* If valid index, then get the substring of length `std` from the current index *)
                String.sub s index (String.length "std")
            else 
                (* If not valid index, then return empty string *)
                "" in 
        (* If current substring is equal to `std`, then increment the result by 1 *)
        if current_substring = "std" 
        then 
            mutable_variable <- mutable_variable + 1 in_channel_length in_channel_length
    done; 
    (* Return the result *)
    mutable_variable

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
